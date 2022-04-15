contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
address stor3;
uint256 stor5;
address tokenAddress;
mapping of uint8 stor12;
mapping of uint256 amtWHITELIST;
uint8 stor14;

function isWHITELIST(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function amtWHITELIST(address arg1) {
    require calldata.size - 4 >= 32
    return amtWHITELIST[arg1]
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function geUnlockTime() {
    return geUnlockTime
}

function _fallback() payable {
    revert
}

function getStart() {
    return (stor5 - block.timestamp)
}

function endWhiteListPhase() {
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    stor14 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    stor1 = owner
    owner = 0
    geUnlockTime = arg1 + block.timestamp
    emit 0x728be007 
    emit 0x0 
    emit 0x0 
}

function manualGetETH() payable {
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function presaleBalance() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xe0596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x728be007: owner, stor1
    owner = stor1
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    emit EmergencyERC20Drain(arg2, arg1, stor3);
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function getLeftTokens() {
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function batchAddWhitelisted(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'OOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor12[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        amtWHITELIST[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}



}
