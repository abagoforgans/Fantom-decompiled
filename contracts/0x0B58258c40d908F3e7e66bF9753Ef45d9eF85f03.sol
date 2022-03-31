contract main {




// =====================  Runtime code  =====================


const version = 'v2'


uint256 feePercentage;
uint256 feesCollected;
address adminAddress;
address walletAddress;
mapping of uint256 balances;
uint8 paused;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(paused)
}

function feePercentage() {
    return feePercentage
}

function feesCollected() {
    return feesCollected
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function pause() {
    if adminAddress != msg.sender:
        revert with 0, 'Unauthorized'
    if paused:
        revert with 0, 'Contract already paused'
    paused = 1
    emit Paused()
}

function unpause() {
    if adminAddress != msg.sender:
        revert with 0, 'Unauthorized'
    if not paused:
        revert with 0, 'Contract not paused'
    paused = 0
    emit Unpaused()
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Unauthorized'
    feePercentage = arg1
    emit FeeChanged(arg1);
}

function initialize(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if adminAddress:
        revert with 0, 'Already initialized'
    walletAddress = arg3
    adminAddress = arg2
    feePercentage = arg1
}

function sweep() {
    call walletAddress with:
       value feesCollected wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sweeped(walletAddress, feesCollected);
    feesCollected = 0
}

function withdraw() {
    if paused:
        revert with 0, 'Contract is paused'
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if paused:
        revert with 0, 'Contract is paused'
    balances[address(msg.sender)] = balances[address(msg.sender)] + msg.value - (msg.value * feePercentage / 100)
    feesCollected += msg.value * feePercentage / 100
    emit Deposited(msg.sender, msg.value, msg.value * feePercentage / 100);
}



}
