contract main {




// =====================  Runtime code  =====================


const name = 'Cow Finance'

const decimals = 18

const requestMinimum = 5 * 10^15

const symbol = 'Cow'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 deadline;
uint256 round2;
uint256 round1;
uint256 totalSupply;
uint256 totalDistributed;
uint256 tokensPerEth;
uint256 totalFees;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 target0drop;
uint256 progress0drop;
uint8 distributionFinished;

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function _taxFee() {
    return _taxFee
}

function round2() {
    return round2
}

function _liquidityFee() {
    return _liquidityFee
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function round1() {
    return round1
}

function progress0drop() {
    return progress0drop
}

function Claimed(address arg1) {
    return bool(stor4[arg1])
}

function distributionFinished() {
    return bool(distributionFinished)
}

function tokensPerEth() {
    return tokensPerEth
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function target0drop() {
    return target0drop
}

function totalDistributed() {
    return totalDistributed
}

function setTaxFeePercent(uint256 arg1) {
    require msg.sender == stor1
    _taxFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require msg.sender == stor1
    _liquidityFee = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == stor1
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function finishDistribution() {
    require msg.sender == stor1
    require not distributionFinished
    distributionFinished = 1
    emit DistrFinished()
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == stor1
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawAll() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require msg.sender == stor1
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function DistributeAirdrop(address arg1, uint256 arg2) {
    require msg.sender == stor1
    require arg2 > 0
    require totalDistributed < totalSupply
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalDistributed + arg2 >= totalDistributed
    totalDistributed += arg2
    if totalDistributed >= totalSupply:
        distributionFinished = 1
    emit Airdrop(arg2, balanceOf[address(arg1)], arg1);
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function DistributeAirdropMultiple(address[] arg1, uint256 arg2) {
    require msg.sender == stor1
    idx = 0
    while idx < arg1.length:
        require msg.sender == stor1
        require arg2 > 0
        require totalDistributed < totalSupply
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + arg2 >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += arg2
        require totalDistributed + arg2 >= totalDistributed
        totalDistributed += arg2
        if totalDistributed >= totalSupply:
            distributionFinished = 1
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        mem[128] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        emit Airdrop(arg2, balanceOf[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = arg2
        emit Transfer(arg2, 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function getTokens() payable {
    require not distributionFinished
    if tokensPerEth:
        require tokensPerEth
        require tokensPerEth * msg.value / tokensPerEth == msg.value
        if msg.value < 5 * 10^15:
            if tokensPerEth * msg.value / 10^18:
                if tokensPerEth * msg.value / 10^18 <= 0:
                    require msg.value >= 5 * 10^15
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
                else:
                    require msg.value >= 5 * 10^15
                    if block.timestamp < deadline:
                        if msg.value < 10^18:
                            require not distributionFinished
                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                            totalDistributed += tokensPerEth * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            require not distributionFinished
                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                            totalDistributed += tokensPerEth * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                    else:
                        if block.timestamp < round1:
                            if msg.value < 10^18:
                                require not distributionFinished
                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                totalDistributed += tokensPerEth * msg.value / 10^18
                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                totalDistributed += tokensPerEth * msg.value / 10^18
                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                        else:
                            if block.timestamp >= round2:
                                if msg.value < 10^18:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                totalDistributed += tokensPerEth * msg.value / 10^18
                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
            else:
                if stor4[address(msg.sender)]:
                    require msg.value >= 5 * 10^15
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
                else:
                    if progress0drop > target0drop:
                        require msg.value >= 5 * 10^15
                        if totalDistributed < totalSupply:
                        else:
                            distributionFinished = 1
                    else:
                        require not distributionFinished
                        require totalDistributed + 10^9 >= totalDistributed
                        totalDistributed += 10^9
                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^9
                        emit Distr(10^9, msg.sender);
                        emit Transfer(10^9, 0, msg.sender);
                        stor4[address(msg.sender)] = 1
                        progress0drop++
                        if totalDistributed < totalSupply:
                        else:
                            distributionFinished = 1
        else:
            if block.timestamp >= deadline:
                if msg.value < 5 * 10^15:
                    if tokensPerEth * msg.value / 10^18:
                        if tokensPerEth * msg.value / 10^18 <= 0:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            require msg.value >= 5 * 10^15
                            if block.timestamp < deadline:
                                if msg.value < 10^18:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                            else:
                                if block.timestamp < round1:
                                    if msg.value < 10^18:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                else:
                                    if block.timestamp >= round2:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                    else:
                        if stor4[address(msg.sender)]:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            if progress0drop > target0drop:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + 10^9 >= totalDistributed
                                totalDistributed += 10^9
                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^9
                                emit Distr(10^9, msg.sender);
                                emit Transfer(10^9, 0, msg.sender);
                                stor4[address(msg.sender)] = 1
                                progress0drop++
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                else:
                    if block.timestamp >= deadline:
                        if tokensPerEth * msg.value / 10^18:
                            if tokensPerEth * msg.value / 10^18 <= 0:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require msg.value >= 5 * 10^15
                                if block.timestamp < deadline:
                                    if msg.value < 10^18:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                else:
                                    if block.timestamp < round1:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp >= round2:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                        else:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                    else:
                        if block.timestamp <= round1:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if block.timestamp >= round2:
                                if tokensPerEth * msg.value / 10^18:
                                    if tokensPerEth * msg.value / 10^18 <= 0:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require msg.value >= 5 * 10^15
                                        if block.timestamp < deadline:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp < round1:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp >= round2:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                            else:
                                if msg.value < 10^18:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                else:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                    emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                        emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                            emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
            else:
                if block.timestamp >= round1:
                    if msg.value < 5 * 10^15:
                        if tokensPerEth * msg.value / 10^18:
                            if tokensPerEth * msg.value / 10^18 <= 0:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require msg.value >= 5 * 10^15
                                if block.timestamp < deadline:
                                    if msg.value < 10^18:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                else:
                                    if block.timestamp < round1:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp >= round2:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                        else:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                    else:
                        if block.timestamp >= deadline:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if block.timestamp <= round1:
                                if tokensPerEth * msg.value / 10^18:
                                    if tokensPerEth * msg.value / 10^18 <= 0:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require msg.value >= 5 * 10^15
                                        if block.timestamp < deadline:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp < round1:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp >= round2:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                            else:
                                if block.timestamp >= round2:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                else:
                                    if msg.value < 10^18:
                                        if tokensPerEth * msg.value / 10^18:
                                            if tokensPerEth * msg.value / 10^18 <= 0:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require msg.value >= 5 * 10^15
                                                if block.timestamp < deadline:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp < round1:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp >= round2:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                    else:
                                        if tokensPerEth * msg.value / 10^18:
                                            if tokensPerEth * msg.value / 10^18 <= 0:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require msg.value >= 5 * 10^15
                                                if block.timestamp < deadline:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                        emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp < round1:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                            emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp >= round2:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                                emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                else:
                    if block.timestamp >= round2:
                        if msg.value < 5 * 10^15:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if block.timestamp >= deadline:
                                if tokensPerEth * msg.value / 10^18:
                                    if tokensPerEth * msg.value / 10^18 <= 0:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require msg.value >= 5 * 10^15
                                        if block.timestamp < deadline:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp < round1:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp >= round2:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                            else:
                                if block.timestamp <= round1:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                else:
                                    if block.timestamp >= round2:
                                        if tokensPerEth * msg.value / 10^18:
                                            if tokensPerEth * msg.value / 10^18 <= 0:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require msg.value >= 5 * 10^15
                                                if block.timestamp < deadline:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp < round1:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp >= round2:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                    else:
                                        if msg.value < 10^18:
                                            if tokensPerEth * msg.value / 10^18:
                                                if tokensPerEth * msg.value / 10^18 <= 0:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require msg.value >= 5 * 10^15
                                                    if block.timestamp < deadline:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp < round1:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            if block.timestamp >= round2:
                                                                if msg.value < 10^18:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                                else:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                            else:
                                                if stor4[address(msg.sender)]:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    if progress0drop > target0drop:
                                                        require msg.value >= 5 * 10^15
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + 10^9 >= totalDistributed
                                                        totalDistributed += 10^9
                                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 10^9
                                                        emit Distr(10^9, msg.sender);
                                                        emit Transfer(10^9, 0, msg.sender);
                                                        stor4[address(msg.sender)] = 1
                                                        progress0drop++
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                        else:
                                            if tokensPerEth * msg.value / 10^18:
                                                if tokensPerEth * msg.value / 10^18 <= 0:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require msg.value >= 5 * 10^15
                                                    if block.timestamp < deadline:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                            emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp < round1:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                                emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            if block.timestamp >= round2:
                                                                if msg.value < 10^18:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                                else:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                                    emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                            else:
                                                if stor4[address(msg.sender)]:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    if progress0drop > target0drop:
                                                        require msg.value >= 5 * 10^15
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + 10^9 >= totalDistributed
                                                        totalDistributed += 10^9
                                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 10^9
                                                        emit Distr(10^9, msg.sender);
                                                        emit Transfer(10^9, 0, msg.sender);
                                                        stor4[address(msg.sender)] = 1
                                                        progress0drop++
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                    else:
                        if msg.value < 10^18:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (101 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += 101 * tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (101 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 101 * tokensPerEth * msg.value / 10^18
                                            emit Distr((101 * tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((101 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (101 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += 101 * tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (101 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 101 * tokensPerEth * msg.value / 10^18
                                                emit Distr((101 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((101 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (101 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += 101 * tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (101 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 101 * tokensPerEth * msg.value / 10^18
                                                    emit Distr((101 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((101 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
    else:
        if msg.value < 5 * 10^15:
            if stor4[address(msg.sender)]:
                require msg.value >= 5 * 10^15
                if totalDistributed < totalSupply:
                else:
                    distributionFinished = 1
            else:
                if progress0drop > target0drop:
                    require msg.value >= 5 * 10^15
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
                else:
                    require not distributionFinished
                    require totalDistributed + 10^9 >= totalDistributed
                    totalDistributed += 10^9
                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^9
                    emit Distr(10^9, msg.sender);
                    emit Transfer(10^9, 0, msg.sender);
                    stor4[address(msg.sender)] = 1
                    progress0drop++
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
        else:
            if block.timestamp >= deadline:
                if msg.value < 5 * 10^15:
                    if stor4[address(msg.sender)]:
                        require msg.value >= 5 * 10^15
                        if totalDistributed < totalSupply:
                        else:
                            distributionFinished = 1
                    else:
                        if progress0drop > target0drop:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            require not distributionFinished
                            require totalDistributed + 10^9 >= totalDistributed
                            totalDistributed += 10^9
                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^9
                            emit Distr(10^9, msg.sender);
                            emit Transfer(10^9, 0, msg.sender);
                            stor4[address(msg.sender)] = 1
                            progress0drop++
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                else:
                    if block.timestamp >= deadline:
                        if stor4[address(msg.sender)]:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            if progress0drop > target0drop:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + 10^9 >= totalDistributed
                                totalDistributed += 10^9
                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^9
                                emit Distr(10^9, msg.sender);
                                emit Transfer(10^9, 0, msg.sender);
                                stor4[address(msg.sender)] = 1
                                progress0drop++
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                    else:
                        if block.timestamp <= round1:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if block.timestamp >= round2:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                            else:
                                if msg.value < 10^18:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
            else:
                if block.timestamp >= round1:
                    if msg.value < 5 * 10^15:
                        if stor4[address(msg.sender)]:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            if progress0drop > target0drop:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + 10^9 >= totalDistributed
                                totalDistributed += 10^9
                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^9
                                emit Distr(10^9, msg.sender);
                                emit Transfer(10^9, 0, msg.sender);
                                stor4[address(msg.sender)] = 1
                                progress0drop++
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                    else:
                        if block.timestamp >= deadline:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if block.timestamp <= round1:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                            else:
                                if block.timestamp >= round2:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                else:
                                    if msg.value < 10^18:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                else:
                    if block.timestamp >= round2:
                        if msg.value < 5 * 10^15:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if block.timestamp >= deadline:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                            else:
                                if block.timestamp <= round1:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                else:
                                    if block.timestamp >= round2:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                    else:
                                        if msg.value < 10^18:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                    else:
                        if msg.value < 10^18:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
}

function _fallback() payable {
    require not distributionFinished
    if tokensPerEth:
        require tokensPerEth
        require tokensPerEth * msg.value / tokensPerEth == msg.value
        if msg.value < 5 * 10^15:
            if tokensPerEth * msg.value / 10^18:
                if tokensPerEth * msg.value / 10^18 <= 0:
                    require msg.value >= 5 * 10^15
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
                else:
                    require msg.value >= 5 * 10^15
                    if block.timestamp < deadline:
                        if msg.value < 10^18:
                            require not distributionFinished
                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                            totalDistributed += tokensPerEth * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            require not distributionFinished
                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                            totalDistributed += tokensPerEth * msg.value / 10^18
                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                    else:
                        if block.timestamp < round1:
                            if msg.value < 10^18:
                                require not distributionFinished
                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                totalDistributed += tokensPerEth * msg.value / 10^18
                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                totalDistributed += tokensPerEth * msg.value / 10^18
                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                        else:
                            if block.timestamp >= round2:
                                if msg.value < 10^18:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                totalDistributed += tokensPerEth * msg.value / 10^18
                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
            else:
                if stor4[address(msg.sender)]:
                    require msg.value >= 5 * 10^15
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
                else:
                    if progress0drop > target0drop:
                        require msg.value >= 5 * 10^15
                        if totalDistributed < totalSupply:
                        else:
                            distributionFinished = 1
                    else:
                        require not distributionFinished
                        require totalDistributed + 10^9 >= totalDistributed
                        totalDistributed += 10^9
                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^9
                        emit Distr(10^9, msg.sender);
                        emit Transfer(10^9, 0, msg.sender);
                        stor4[address(msg.sender)] = 1
                        progress0drop++
                        if totalDistributed < totalSupply:
                        else:
                            distributionFinished = 1
        else:
            if block.timestamp >= deadline:
                if msg.value < 5 * 10^15:
                    if tokensPerEth * msg.value / 10^18:
                        if tokensPerEth * msg.value / 10^18 <= 0:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            require msg.value >= 5 * 10^15
                            if block.timestamp < deadline:
                                if msg.value < 10^18:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                            else:
                                if block.timestamp < round1:
                                    if msg.value < 10^18:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                else:
                                    if block.timestamp >= round2:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                    else:
                        if stor4[address(msg.sender)]:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            if progress0drop > target0drop:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + 10^9 >= totalDistributed
                                totalDistributed += 10^9
                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^9
                                emit Distr(10^9, msg.sender);
                                emit Transfer(10^9, 0, msg.sender);
                                stor4[address(msg.sender)] = 1
                                progress0drop++
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                else:
                    if block.timestamp >= deadline:
                        if tokensPerEth * msg.value / 10^18:
                            if tokensPerEth * msg.value / 10^18 <= 0:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require msg.value >= 5 * 10^15
                                if block.timestamp < deadline:
                                    if msg.value < 10^18:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                else:
                                    if block.timestamp < round1:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp >= round2:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                        else:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                    else:
                        if block.timestamp <= round1:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if block.timestamp >= round2:
                                if tokensPerEth * msg.value / 10^18:
                                    if tokensPerEth * msg.value / 10^18 <= 0:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require msg.value >= 5 * 10^15
                                        if block.timestamp < deadline:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp < round1:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp >= round2:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                            else:
                                if msg.value < 10^18:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                else:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                    emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                        emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                            emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
            else:
                if block.timestamp >= round1:
                    if msg.value < 5 * 10^15:
                        if tokensPerEth * msg.value / 10^18:
                            if tokensPerEth * msg.value / 10^18 <= 0:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require msg.value >= 5 * 10^15
                                if block.timestamp < deadline:
                                    if msg.value < 10^18:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                else:
                                    if block.timestamp < round1:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp >= round2:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                        else:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                    else:
                        if block.timestamp >= deadline:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if block.timestamp <= round1:
                                if tokensPerEth * msg.value / 10^18:
                                    if tokensPerEth * msg.value / 10^18 <= 0:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require msg.value >= 5 * 10^15
                                        if block.timestamp < deadline:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp < round1:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp >= round2:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                            else:
                                if block.timestamp >= round2:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                else:
                                    if msg.value < 10^18:
                                        if tokensPerEth * msg.value / 10^18:
                                            if tokensPerEth * msg.value / 10^18 <= 0:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require msg.value >= 5 * 10^15
                                                if block.timestamp < deadline:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp < round1:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp >= round2:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                    else:
                                        if tokensPerEth * msg.value / 10^18:
                                            if tokensPerEth * msg.value / 10^18 <= 0:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require msg.value >= 5 * 10^15
                                                if block.timestamp < deadline:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                        emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp < round1:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                            emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp >= round2:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                                emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                else:
                    if block.timestamp >= round2:
                        if msg.value < 5 * 10^15:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if block.timestamp >= deadline:
                                if tokensPerEth * msg.value / 10^18:
                                    if tokensPerEth * msg.value / 10^18 <= 0:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require msg.value >= 5 * 10^15
                                        if block.timestamp < deadline:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp < round1:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp >= round2:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                            else:
                                if block.timestamp <= round1:
                                    if tokensPerEth * msg.value / 10^18:
                                        if tokensPerEth * msg.value / 10^18 <= 0:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require msg.value >= 5 * 10^15
                                            if block.timestamp < deadline:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                if block.timestamp < round1:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp >= round2:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                else:
                                    if block.timestamp >= round2:
                                        if tokensPerEth * msg.value / 10^18:
                                            if tokensPerEth * msg.value / 10^18 <= 0:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require msg.value >= 5 * 10^15
                                                if block.timestamp < deadline:
                                                    if msg.value < 10^18:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                        totalDistributed += tokensPerEth * msg.value / 10^18
                                                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                else:
                                                    if block.timestamp < round1:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp >= round2:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                    else:
                                        if msg.value < 10^18:
                                            if tokensPerEth * msg.value / 10^18:
                                                if tokensPerEth * msg.value / 10^18 <= 0:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require msg.value >= 5 * 10^15
                                                    if block.timestamp < deadline:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp < round1:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            if block.timestamp >= round2:
                                                                if msg.value < 10^18:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                                else:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                            else:
                                                if stor4[address(msg.sender)]:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    if progress0drop > target0drop:
                                                        require msg.value >= 5 * 10^15
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + 10^9 >= totalDistributed
                                                        totalDistributed += 10^9
                                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 10^9
                                                        emit Distr(10^9, msg.sender);
                                                        emit Transfer(10^9, 0, msg.sender);
                                                        stor4[address(msg.sender)] = 1
                                                        progress0drop++
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                        else:
                                            if tokensPerEth * msg.value / 10^18:
                                                if tokensPerEth * msg.value / 10^18 <= 0:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require msg.value >= 5 * 10^15
                                                    if block.timestamp < deadline:
                                                        if msg.value < 10^18:
                                                            require not distributionFinished
                                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                        else:
                                                            require not distributionFinished
                                                            require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                            totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                            require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                            emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                            emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                            if totalDistributed < totalSupply:
                                                            else:
                                                                distributionFinished = 1
                                                    else:
                                                        if block.timestamp < round1:
                                                            if msg.value < 10^18:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                                emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                                        else:
                                                            if block.timestamp >= round2:
                                                                if msg.value < 10^18:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                                else:
                                                                    require not distributionFinished
                                                                    require totalDistributed + (51 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                    totalDistributed += 51 * tokensPerEth * msg.value / 10^18
                                                                    require balanceOf[address(msg.sender)] + (51 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                    balanceOf[address(msg.sender)] += 51 * tokensPerEth * msg.value / 10^18
                                                                    emit Distr((51 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                                    emit Transfer((51 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                    if totalDistributed < totalSupply:
                                                                    else:
                                                                        distributionFinished = 1
                                                            else:
                                                                require not distributionFinished
                                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                                if totalDistributed < totalSupply:
                                                                else:
                                                                    distributionFinished = 1
                                            else:
                                                if stor4[address(msg.sender)]:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    if progress0drop > target0drop:
                                                        require msg.value >= 5 * 10^15
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                                                    else:
                                                        require not distributionFinished
                                                        require totalDistributed + 10^9 >= totalDistributed
                                                        totalDistributed += 10^9
                                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += 10^9
                                                        emit Distr(10^9, msg.sender);
                                                        emit Transfer(10^9, 0, msg.sender);
                                                        stor4[address(msg.sender)] = 1
                                                        progress0drop++
                                                        if totalDistributed < totalSupply:
                                                        else:
                                                            distributionFinished = 1
                    else:
                        if msg.value < 10^18:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                        else:
                            if tokensPerEth * msg.value / 10^18:
                                if tokensPerEth * msg.value / 10^18 <= 0:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require msg.value >= 5 * 10^15
                                    if block.timestamp < deadline:
                                        if msg.value < 10^18:
                                            require not distributionFinished
                                            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + (101 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                            totalDistributed += 101 * tokensPerEth * msg.value / 10^18
                                            require balanceOf[address(msg.sender)] + (101 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 101 * tokensPerEth * msg.value / 10^18
                                            emit Distr((101 * tokensPerEth * msg.value / 10^18), msg.sender);
                                            emit Transfer((101 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                    else:
                                        if block.timestamp < round1:
                                            if msg.value < 10^18:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (101 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += 101 * tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (101 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 101 * tokensPerEth * msg.value / 10^18
                                                emit Distr((101 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((101 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                        else:
                                            if block.timestamp >= round2:
                                                if msg.value < 10^18:
                                                    require not distributionFinished
                                                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + (101 * tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                    totalDistributed += 101 * tokensPerEth * msg.value / 10^18
                                                    require balanceOf[address(msg.sender)] + (101 * tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 101 * tokensPerEth * msg.value / 10^18
                                                    emit Distr((101 * tokensPerEth * msg.value / 10^18), msg.sender);
                                                    emit Transfer((101 * tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                                                totalDistributed += tokensPerEth * msg.value / 10^18
                                                require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                                                emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                                                emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                            else:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
    else:
        if msg.value < 5 * 10^15:
            if stor4[address(msg.sender)]:
                require msg.value >= 5 * 10^15
                if totalDistributed < totalSupply:
                else:
                    distributionFinished = 1
            else:
                if progress0drop > target0drop:
                    require msg.value >= 5 * 10^15
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
                else:
                    require not distributionFinished
                    require totalDistributed + 10^9 >= totalDistributed
                    totalDistributed += 10^9
                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^9
                    emit Distr(10^9, msg.sender);
                    emit Transfer(10^9, 0, msg.sender);
                    stor4[address(msg.sender)] = 1
                    progress0drop++
                    if totalDistributed < totalSupply:
                    else:
                        distributionFinished = 1
        else:
            if block.timestamp >= deadline:
                if msg.value < 5 * 10^15:
                    if stor4[address(msg.sender)]:
                        require msg.value >= 5 * 10^15
                        if totalDistributed < totalSupply:
                        else:
                            distributionFinished = 1
                    else:
                        if progress0drop > target0drop:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            require not distributionFinished
                            require totalDistributed + 10^9 >= totalDistributed
                            totalDistributed += 10^9
                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10^9
                            emit Distr(10^9, msg.sender);
                            emit Transfer(10^9, 0, msg.sender);
                            stor4[address(msg.sender)] = 1
                            progress0drop++
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                else:
                    if block.timestamp >= deadline:
                        if stor4[address(msg.sender)]:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            if progress0drop > target0drop:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + 10^9 >= totalDistributed
                                totalDistributed += 10^9
                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^9
                                emit Distr(10^9, msg.sender);
                                emit Transfer(10^9, 0, msg.sender);
                                stor4[address(msg.sender)] = 1
                                progress0drop++
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                    else:
                        if block.timestamp <= round1:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if block.timestamp >= round2:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                            else:
                                if msg.value < 10^18:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                else:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
            else:
                if block.timestamp >= round1:
                    if msg.value < 5 * 10^15:
                        if stor4[address(msg.sender)]:
                            require msg.value >= 5 * 10^15
                            if totalDistributed < totalSupply:
                            else:
                                distributionFinished = 1
                        else:
                            if progress0drop > target0drop:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                require not distributionFinished
                                require totalDistributed + 10^9 >= totalDistributed
                                totalDistributed += 10^9
                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10^9
                                emit Distr(10^9, msg.sender);
                                emit Transfer(10^9, 0, msg.sender);
                                stor4[address(msg.sender)] = 1
                                progress0drop++
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                    else:
                        if block.timestamp >= deadline:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if block.timestamp <= round1:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                            else:
                                if block.timestamp >= round2:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                else:
                                    if msg.value < 10^18:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                    else:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                else:
                    if block.timestamp >= round2:
                        if msg.value < 5 * 10^15:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if block.timestamp >= deadline:
                                if stor4[address(msg.sender)]:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    if progress0drop > target0drop:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        require not distributionFinished
                                        require totalDistributed + 10^9 >= totalDistributed
                                        totalDistributed += 10^9
                                        require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 10^9
                                        emit Distr(10^9, msg.sender);
                                        emit Transfer(10^9, 0, msg.sender);
                                        stor4[address(msg.sender)] = 1
                                        progress0drop++
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                            else:
                                if block.timestamp <= round1:
                                    if stor4[address(msg.sender)]:
                                        require msg.value >= 5 * 10^15
                                        if totalDistributed < totalSupply:
                                        else:
                                            distributionFinished = 1
                                    else:
                                        if progress0drop > target0drop:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            require not distributionFinished
                                            require totalDistributed + 10^9 >= totalDistributed
                                            totalDistributed += 10^9
                                            require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += 10^9
                                            emit Distr(10^9, msg.sender);
                                            emit Transfer(10^9, 0, msg.sender);
                                            stor4[address(msg.sender)] = 1
                                            progress0drop++
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                else:
                                    if block.timestamp >= round2:
                                        if stor4[address(msg.sender)]:
                                            require msg.value >= 5 * 10^15
                                            if totalDistributed < totalSupply:
                                            else:
                                                distributionFinished = 1
                                        else:
                                            if progress0drop > target0drop:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                require not distributionFinished
                                                require totalDistributed + 10^9 >= totalDistributed
                                                totalDistributed += 10^9
                                                require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += 10^9
                                                emit Distr(10^9, msg.sender);
                                                emit Transfer(10^9, 0, msg.sender);
                                                stor4[address(msg.sender)] = 1
                                                progress0drop++
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                    else:
                                        if msg.value < 10^18:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                        else:
                                            if stor4[address(msg.sender)]:
                                                require msg.value >= 5 * 10^15
                                                if totalDistributed < totalSupply:
                                                else:
                                                    distributionFinished = 1
                                            else:
                                                if progress0drop > target0drop:
                                                    require msg.value >= 5 * 10^15
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                                                else:
                                                    require not distributionFinished
                                                    require totalDistributed + 10^9 >= totalDistributed
                                                    totalDistributed += 10^9
                                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += 10^9
                                                    emit Distr(10^9, msg.sender);
                                                    emit Transfer(10^9, 0, msg.sender);
                                                    stor4[address(msg.sender)] = 1
                                                    progress0drop++
                                                    if totalDistributed < totalSupply:
                                                    else:
                                                        distributionFinished = 1
                    else:
                        if msg.value < 10^18:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                        else:
                            if stor4[address(msg.sender)]:
                                require msg.value >= 5 * 10^15
                                if totalDistributed < totalSupply:
                                else:
                                    distributionFinished = 1
                            else:
                                if progress0drop > target0drop:
                                    require msg.value >= 5 * 10^15
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
                                else:
                                    require not distributionFinished
                                    require totalDistributed + 10^9 >= totalDistributed
                                    totalDistributed += 10^9
                                    require balanceOf[address(msg.sender)] + 10^9 >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10^9
                                    emit Distr(10^9, msg.sender);
                                    emit Transfer(10^9, 0, msg.sender);
                                    stor4[address(msg.sender)] = 1
                                    progress0drop++
                                    if totalDistributed < totalSupply:
                                    else:
                                        distributionFinished = 1
}



}
