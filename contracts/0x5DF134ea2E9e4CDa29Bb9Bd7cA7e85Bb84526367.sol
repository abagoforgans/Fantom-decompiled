contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address presaleAddress;
uint256 presaleStartTimestamp;
uint256 presaleEndTimestamp;
uint256 softCapEthAmount;
uint256 hardCapEthAmount;
uint256 totalDepositedEthBalance;
uint256 minimumDepositEthAmount;
uint256 maximumDepositEthAmount;
mapping of uint256 deposits;

function minimumDepositEthAmount() {
    return minimumDepositEthAmount
}

function maximumDepositEthAmount() {
    return maximumDepositEthAmount
}

function softCapEthAmount() {
    return softCapEthAmount
}

function presaleStartTimestamp() {
    return presaleStartTimestamp
}

function presaleEndTimestamp() {
    return presaleEndTimestamp
}

function getDepositAmount() {
    return totalDepositedEthBalance
}

function hardCapEthAmount() {
    return hardCapEthAmount
}

function owner() {
    return owner
}

function totalDepositedEthBalance() {
    return totalDepositedEthBalance
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function presale() {
    return presaleAddress
}

function _fallback() payable {
    revert
}

function getLeftTimeAmount() {
    if block.timestamp <= presaleEndTimestamp:
        return (presaleEndTimestamp - block.timestamp)
    else:
        return 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function releaseFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < presaleEndTimestamp:
        if totalDepositedEthBalance != hardCapEthAmount:
            revert with 0, 'presale is active'
    call presaleAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverBEP20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Recovered(address(arg1), arg2);
}

function deposit() payable {
    if block.timestamp < presaleStartTimestamp:
        revert with 0, 'presale is not active'
    if block.timestamp > presaleEndTimestamp:
        revert with 0, 'presale is not active'
    if totalDepositedEthBalance + msg.value < totalDepositedEthBalance:
        revert with 0, 'SafeMath: addition overflow'
    if totalDepositedEthBalance + msg.value > hardCapEthAmount:
        revert with 0, 'deposit limits reached'
    if deposits[address(msg.sender)] + msg.value < deposits[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if deposits[address(msg.sender)] + msg.value < minimumDepositEthAmount:
        revert with 0, 'incorrect amount'
    if deposits[address(msg.sender)] + msg.value < deposits[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if deposits[address(msg.sender)] + msg.value > maximumDepositEthAmount:
        revert with 0, 'incorrect amount'
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require msg.value
        if 10^18 * msg.value / msg.value != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalDepositedEthBalance + msg.value < totalDepositedEthBalance:
        revert with 0, 'SafeMath: addition overflow'
    totalDepositedEthBalance += msg.value
    if deposits[address(msg.sender)] + msg.value < deposits[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    deposits[address(msg.sender)] += msg.value
    emit Deposited(msg.value, msg.sender);
}



}
