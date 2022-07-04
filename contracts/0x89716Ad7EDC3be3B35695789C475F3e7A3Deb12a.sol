contract main {




// =====================  Runtime code  =====================


#
#  - sub_0b317bcb(?)
#
uint256 stor0;
uint32 stor1;
address governanceAddress;
uint256 stor1;
address pendingGovernanceAddress;

function governance() {
    return address(governanceAddress)
}

function pendingGovernance() {
    return pendingGovernanceAddress
}

function _fallback() payable {
    revert
}

function acceptGovernance() {
    if pendingGovernanceAddress != msg.sender:
        revert with 0, '!pendingGovernance'
    address(governanceAddress) = pendingGovernanceAddress
    pendingGovernanceAddress = 0
    emit 0xb440d9cb: address(governanceAddress)
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    require arg1
    pendingGovernanceAddress = arg1
    emit 0x3b993242: arg1
}

function retrieveETH() {
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    call address(governanceAddress) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            emit 0x94d76930: ' '
            if not ext_call.success:
                revert with 0, 'Sending ETH failed'
    else:
        if not ext_call.success:
            emit 0x94d76930: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
            if not ext_call.success:
                revert with 0, 'Sending ETH failed'
    emit 0xd6dbd685: eth.balance(this.address)
    stor0 = 1
}

function sub_1924c3be(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    call address(governanceAddress) with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            emit 0x94d76930: ' '
            if not ext_call.success:
                revert with 0, 'Sending ETH failed'
    else:
        if not ext_call.success:
            emit 0x94d76930: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
            if not ext_call.success:
                revert with 0, 'Sending ETH failed'
    emit 0xd6dbd685: arg1
    stor0 = 1
}

function retrieveToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    mem[ceil32(return_data.size) + 132] = address(governanceAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xed03f54a: address(arg1), ext_call.return_data[0]
}



}
