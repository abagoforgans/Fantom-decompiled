contract main {




// =====================  Runtime code  =====================


const time = block.timestamp


address owner;
address stor1;
uint256 RATE;
uint256 CAP;
uint256 sub_f97c7d12;
uint256 START;
uint256 sub_242c8e69;
uint256 DAYS;
uint256 decimals;
uint8 sub_05db3194;
mapping of uint256 balanceOf;
uint256 raisedAmount;
address beneficiaryAddress;
address tokenAddress;

function sub_05db3194(?) {
    return bool(sub_05db3194)
}

function sub_242c8e69(?) {
    return sub_242c8e69
}

function beneficiary() {
    return beneficiaryAddress
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function START() {
    return START
}

function DAYS() {
    return DAYS
}

function raisedAmount() {
    return raisedAmount
}

function Decimals() {
    return decimals
}

function CAP() {
    return CAP
}

function sub_f97c7d12(?) {
    return sub_f97c7d12
}

function goalReached() {
    return raisedAmount >= 10^18 * CAP
}

function sub_b9184fe2(?) {
    require msg.sender == owner
    CAP = arg1
}

function sub_08ffa730(?) {
    require msg.sender == owner
    RATE = arg1
}

function sub_d17b5782(?) {
    require msg.sender == owner
    START = arg1
}

function sub_b34bb800(?) {
    require msg.sender == owner
    sub_242c8e69 = arg1
}

function sub_fa7d9b3a(?) {
    require msg.sender == owner
    sub_f97c7d12 = arg1
}

function updateDAYS(uint256 arg1) {
    require msg.sender == owner
    DAYS = arg1
}

function sub_90e47c8b(?) {
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function sub_babc8571(?) {
    require msg.sender == owner
    sub_05db3194 = uint8(arg1)
}

function updateDecimals(uint256 arg1) {
    require msg.sender == owner
    decimals = arg1
}

function endTime() {
    require (24 * 3600 * DAYS) + START >= START
    return ((24 * 3600 * DAYS) + START)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function updateTokenAddress(address arg1) {
    require msg.sender == owner
    stor1 = arg1
    tokenAddress = arg1
}

function isActive() {
    if block.timestamp < START:
        return block.timestamp >= START
    require (24 * 3600 * DAYS) + START >= START
    if block.timestamp > (24 * 3600 * DAYS) + START:
        return block.timestamp <= (24 * 3600 * DAYS) + START
    return (raisedAmount < 10^18 * CAP)
}

function tokensAvailable() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimTime() {
    if not sub_242c8e69:
        if (24 * 3600 * DAYS) + START >= START:
            return ((24 * 3600 * DAYS) + START)
    else:
        if (24 * 3600 * DAYS) + START >= START:
            if 24 * 3600 * sub_242c8e69 >= 0:
                return ((24 * 3600 * sub_242c8e69) + (24 * 3600 * DAYS) + START)
    revert
}

function claim() {
    require (24 * 3600 * DAYS) + START >= START
    require 24 * 3600 * sub_242c8e69 >= 0
    require block.timestamp >= (24 * 3600 * sub_242c8e69) + (24 * 3600 * DAYS) + START
    require balanceOf[msg.sender] > 0
    balanceOf[msg.sender] = 0
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimTokens(uint256 arg1) {
    require msg.sender == owner
    if 1 == arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function buyTokens() payable {
    require block.timestamp >= START
    require (24 * 3600 * DAYS) + START >= START
    require block.timestamp <= (24 * 3600 * DAYS) + START
    require raisedAmount < 10^18 * CAP
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    if 18 == decimals:
        emit BoughtTokens((RATE * msg.value), msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        if sub_05db3194:
            require (RATE * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += RATE * msg.value
        else:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, RATE * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require 10^(-decimals + 18)
        emit BoughtTokens((RATE * msg.value / 10^(-decimals + 18)), msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        if sub_05db3194:
            require (RATE * msg.value / 10^(-decimals + 18)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += RATE * msg.value / 10^(-decimals + 18)
        else:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, RATE * msg.value / 10^(-decimals + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if sub_f97c7d12:
        if 10^18 * sub_f97c7d12:
            require 10^18 * sub_f97c7d12
            require 10^18 * RATE * sub_f97c7d12 / 10^18 * sub_f97c7d12 == RATE
        if balanceOf[msg.sender] > 10^18 * RATE * sub_f97c7d12:
            require not sub_f97c7d12
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= START
    require (24 * 3600 * DAYS) + START >= START
    require block.timestamp <= (24 * 3600 * DAYS) + START
    require raisedAmount < 10^18 * CAP
    if msg.value:
        require msg.value
        require RATE * msg.value / msg.value == RATE
    if 18 == decimals:
        emit BoughtTokens((RATE * msg.value), msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        if sub_05db3194:
            require (RATE * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += RATE * msg.value
        else:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, RATE * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require 10^(-decimals + 18)
        emit BoughtTokens((RATE * msg.value / 10^(-decimals + 18)), msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        if sub_05db3194:
            require (RATE * msg.value / 10^(-decimals + 18)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += RATE * msg.value / 10^(-decimals + 18)
        else:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, RATE * msg.value / 10^(-decimals + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if sub_f97c7d12:
        if 10^18 * sub_f97c7d12:
            require 10^18 * sub_f97c7d12
            require 10^18 * RATE * sub_f97c7d12 / 10^18 * sub_f97c7d12 == RATE
        if balanceOf[msg.sender] > 10^18 * RATE * sub_f97c7d12:
            require not sub_f97c7d12
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
